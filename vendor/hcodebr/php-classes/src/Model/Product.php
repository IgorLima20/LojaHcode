<?php 
    namespace Hcode\Model;

    use \Hcode\DB\Sql;
    use Hcode\Mailer;
    use \Hcode\Model;

    class Product extends Model {

        public static function listAll() 
        {
            $sql = new Sql();

            return $sql->select("SELECT * FROM tb_products ORDER BY desproduct");
        } 

        public static function checkList($list)
        {
            foreach ($list as &$row) {
                $p = new Product();
                $p->setData($row);
                $row = $p->getValues();
            }
            return $list;
        }

        public function save() 
        {
            $sql = new Sql();

            $results = $sql->select("CALL sp_products_save(:idproduct, :desproduct, :vlprice, :vlwidth, 
            :vlheight, :vllength, :vlweight, :desurl, :desphoto)", array(
                ":idproduct"  => $this->getidproduct(),
                ":desproduct" => $this->getdesproduct(),
                ":vlprice"    => $this->getvlprice(),
                ":vlwidth"    => $this->getvlwidth(),
                ":vlheight"   => $this->getvlheight(),
                ":vllength"   => $this->getvllength(),
                ":vlweight"   => $this->getvlweight(),
                ":desurl"     => $this->getdesurl(),
                ":desphoto"     => $this->getdesphoto(),
            ));

            $this->setData($results[0]);

            Category::updateFile();
        }

        public function get($idproduct) 
        {
            $sql = new Sql();

            $results = $sql->select("SELECT * FROM tb_products WHERE idproduct = :idproduct", array(
                ":idproduct" => $idproduct
            ));

            $this->setData($results[0]);
        }

        public function delete()
        {
            $sql = new Sql();

            $sql->query("DELETE FROM tb_products WHERE idproduct = :idproduct", array(
                ":idproduct" => $this->getidproduct()
            ));

            Category::updateFile();
        }

        public function checkPhoto($novaimagem = false)
        {
            if (file_exists($_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . "res" . DIRECTORY_SEPARATOR .
            "site" . DIRECTORY_SEPARATOR . "img" . DIRECTORY_SEPARATOR . "products" .DIRECTORY_SEPARATOR .
            $novaimagem)) {
                $url = "/res/site/img/products/" . $novaimagem;
            } else {
                $url = "/res/site/img/padrao.jpg";
            }

            return $this->setdesphoto($url);
        }

        public function getValues()
        {
            //$this->checkPhoto();

            $values = parent::getValues();

            return $values;
        }

        public function setPhoto($file)
        {
            $extension = explode('.', $file['name']);
            $extension = end($extension);

            switch ($extension) {
                case "jpg":
                case "jpeg":   
                    $image = imagecreatefromjpeg($file["tmp_name"]);
                break;

                case "gif":
                    $image = imagecreatefromgif($file["tmp_name"]);
                break;

                case "png":
                    $image = imagecreatefrompng($file["tmp_name"]);
                break;  
            }

            $novaimagem = md5(uniqid()).time() . '.jpg';

            $dist = $_SERVER['DOCUMENT_ROOT'] . DIRECTORY_SEPARATOR . "res" . DIRECTORY_SEPARATOR .
            "site" . DIRECTORY_SEPARATOR . "img" . DIRECTORY_SEPARATOR . "products" .DIRECTORY_SEPARATOR .
            $novaimagem;

            imagejpeg($image, $dist);

            imagedestroy($image);
            
            $this->checkPhoto($novaimagem);
        }

        public function getFromURL($desurl)
        {
            $sql = new Sql();

            $rows = $sql->select("SELECT * FROM tb_products WHERE desurl = :desurl LIMIT 1", [
                ":desurl" => $desurl
            ]);

            $this->setData($rows[0]);
        }
        
        public function getCategories() 
        {
            $sql = new Sql();

            return $sql->select("SELECT * FROM tb_categories a 
            INNER JOIN tb_productscategories b ON a.idcategory = b.idcategory
            WHERE b.idproduct = :idproduct", [
                ":idproduct" => $this->getidproduct()
            ]);
        }

        public static function getPage($page = 1, $itemsPerPage = 10)
    {
        $start = ($page - 1) * $itemsPerPage;
        $sql = new Sql();

        $results = $sql->select("
                SELECT SQL_CALC_FOUND_ROWS  * 
                FROM tb_products 
                ORDER BY desproduct
                LIMIT $start, $itemsPerPage;
            ");

        $resultTotal = $sql->select("SELECT fOUND_ROWS() nrtotal");

        return [
            "data" => $results,
            "total" => (int)$resultTotal[0]["nrtotal"],
            "pages" => ceil($resultTotal[0]["nrtotal"] / $itemsPerPage)
        ];
    }

    public static function getPageSearch($search, $page = 1, $itemsPerPage = 10)
    {
        $start = ($page - 1) * $itemsPerPage;
        $sql = new Sql();

        $results = $sql->select("
                SELECT SQL_CALC_FOUND_ROWS  * 
                FROM tb_products 
                WHERE desproduct LIKE :search
                ORDER BY desproduct
                LIMIT $start, $itemsPerPage;
            ", [
            ':search' => '%' . $search . '%'
        ]);

        $resultTotal = $sql->select("SELECT fOUND_ROWS() nrtotal");

        return [
            "data" => $results,
            "total" => (int)$resultTotal[0]["nrtotal"],
            "pages" => ceil($resultTotal[0]["nrtotal"] / $itemsPerPage)
        ];
    }

    }
?>