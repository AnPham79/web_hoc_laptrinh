<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'ten_hocvien' => 'Admin',
            'anhdaidien' => '',
            'quyen' => '2',
            'email' => 'staff@gmail.com',
            'matkhau' => Hash::make('123456'),
            'sodienthoai' => '0927553664',
        ];
        User::create($data);

        $data = [
            'ten_hocvien' => 'Super Admin',
            'anhdaidien' => '',
            'email' => 'Admin@gmail.com',
            'matkhau' => Hash::make('123456'),
            'sodienthoai' => '0927553664',
            'quyen' => '3',
        ];
        User::create($data);
    }
}
