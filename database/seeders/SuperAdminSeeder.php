<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Support\Facades\Hash;
use Illuminate\Database\Seeder;
// use App\Models\Admin;
use App\Models\{User,Role,Profile, SuperAdmin as ModelsSuperAdmin};

class SuperAdminSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $superAdmin = User::where([
            "accType" => "Super Admin",
        ])->first();
        ModelsSuperAdmin::create([
            "userId" => $superAdmin->id,
            "firstName" => "MdDamuli",
            "lastName" => "MdDamuli", 
            "phone" => "0900000000", 
            "email" => $superAdmin->email, 
            "position" => $superAdmin->position,
            "address" => "Not Set"
        ]);
    }
}
