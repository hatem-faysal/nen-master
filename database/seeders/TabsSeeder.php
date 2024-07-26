<?php

namespace Database\Seeders;

use App\Models\Tabs;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;

class TabsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
{
        DB::table('tabs')->delete();
        $Tabs = [
            [
                'name'=>\json_encode(['en'=>$nameEn = 'about' , 'ar'=>'about']) ,
                'slug'=>Str::slug($nameEn),

            ],
            [
                'name'=>\json_encode(['en'=>$nameEn = 'program' , 'ar'=>'program']) ,
                'slug'=>Str::slug($nameEn),
            ],
            [
                'name'=>\json_encode(['en'=>$nameEn = 'help' , 'ar'=>'help']) ,
                'slug'=>Str::slug($nameEn),
            ],
            [
                'name'=>\json_encode(['en'=>$nameEn = 'join-us' , 'ar'=>'join-us']) ,
                'slug'=>Str::slug($nameEn),
            ],
            [
                'name'=>\json_encode(['en'=>$nameEn = 'arshaef' , 'ar'=>'arshaef']) ,
                'slug'=>Str::slug($nameEn),
            ],
        ];
        Tabs::insert($Tabs);
    }
}
