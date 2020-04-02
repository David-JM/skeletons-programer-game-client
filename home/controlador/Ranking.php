<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of Usuario
 *
 * @author David Martinez
 */
class Ranking{
    //put your code here    
    private $objConexion;


    //CONSTRUCTOR
    
    public function __construct() {
        $this->objConexion = new Conexion();
    }

    // METODOS
    
    public function consultar($nivel){
            $consulta="SELECT username, r.descripcion as rango, general_points  FROM usuario as  u
                    INNER JOIN nivel as n ON u.id_nivel=n.id
                    INNER JOIN rango as r ON u.id_rango=r.id where n.id=$nivel order by general_points desc";
            $resultado=$this->objConexion->ejecutarQuery($consulta);
            $arreglo=array();
            while($fila = mysql_fetch_array($resultado)) { $arreglo[] = $fila; }
            return $arreglo;
    }

    public function consultarPorPaginacion($limit, $nivel)
    {
            $consulta="SELECT username, r.descripcion as rango, general_points  FROM usuario as  u
                    INNER JOIN nivel as n ON u.id_nivel=n.id
                    INNER JOIN rango as r ON u.id_rango=r.id  where n.id=$nivel order by general_points desc $limit";
            $resultado=$this->objConexion->ejecutarQuery($consulta);
            $arreglo=array();
            while($fila = mysql_fetch_array($resultado)) { $arreglo[] = $fila; }
            return $arreglo;
    }

}

?>