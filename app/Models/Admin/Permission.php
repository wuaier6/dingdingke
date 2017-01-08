<?php

namespace App\Models\Admin;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    protected $table='admin_permissions';

    public function roles()
    {
//        "SELECT
//	`admin_roles`.*, `admin_permission_role`.`permission_id` AS `pivot_permission_id`,
//	`admin_permission_role`.`role_id` AS `pivot_role_id`
//FROM
//	`admin_roles`
//INNER JOIN `admin_permission_role` ON `admin_roles`.`id` = `admin_permission_role`.`role_id`
//WHERE
//	`admin_permission_role`.`permission_id` IS NULL"
        return $this->belongsToMany(Role::class,'admin_permission_role','permission_id','role_id');
    }

    /**
     * 获取关联到用户的手机
     */
    public function hasOne2()
    {
//        {"sql":"select * from `admin_roles` where `admin_roles`.`name` = ? and `admin_roles`.`name` is not null limit 1","bindings":[1],}
//        {"sql":"select * from `admin_permissions` where `admin_permissions`.`id` = ? limit 1","bindings":[1],"time":11.31,}


//        {"sql":"select * from `admin_roles` where `admin_roles`.`name` = ? and `admin_roles`.`name` is not null limit 1","bindings":[0],"time":0.63,"connection":{},"connectionName":"mysql"}
//        {"sql":"select * from `admin_permissions` where `admin_permissions`.`id` = ? limit 1","bindings":[1],"time":12.07,"connection":{},"connectionName":"mysql"}
        return $this->hasOne(Role::class, 'name', 'cid');
    }


    /**
     * 获取关联到用户的手机
     */
    public function belongsTo2()
    {

//        {"sql":"select * from `admin_roles` where `admin_roles`.`name` = ? limit 1","bindings":[0],"time":0.68,"connection":{},"connectionName":"mysql"}
//
//        {"sql":"select * from `admin_permissions` where `admin_permissions`.`id` = ? limit 1","bindings":[1],"time":13,"connection":{},"connectionName":"mysql"}
           return $this->belongsTo(Role::class, 'cid', 'name');
    }

    /**
     * 获取关联到用户的手机
     */
    public function hasMany2()
    {

//        {"sql":"select * from `admin_roles` where `admin_roles`.`name` = ? and `admin_roles`.`name` is not null","bindings":[0],"time":0.58,"connection":{},"connectionName":"mysql"}
//        {"sql":"select * from `admin_permissions` where `admin_permissions`.`id` = ? limit 1","bindings":[1],"time":12.75,"connection":{},"connectionName":"mysql"}
        return $this->hasMany(Role::class, 'name', 'cid');
    }

    /**
     * 获取关联到用户的手机
     */
    public function belongsToMany2()
    {

//        {"sql":"select * from `admin_roles` where `admin_roles`.`name` = ? and `admin_roles`.`name` is not null","bindings":[0],"time":0.58,"connection":{},"connectionName":"mysql"}

//
//        `admin_roles`.*, `admin_permissions`.`cid` AS `pivot_cid`,
//	`admin_permissions`.`name` AS `pivot_name`
//FROM
//	`admin_roles`
//INNER JOIN `admin_permissions` ON `admin_roles`.`id` = `admin_permissions`.`name`
//WHERE
//	`admin_permissions`.`cid` = 1
//        {"sql":"select * from `admin_permissions` where `admin_permissions`.`id` = ? limit 1","bindings":[1],"time":12.75,"connection":{},"connectionName":"mysql"}
        return $this->belongsToMany(Role::class,'admin_permissions','cid', 'name');
    }
}
