<?php
namespace App\Actions\ProgramTabs;
use App\Helper\ImageHelper;
use App\Models\ProgramTabs;

class StoreProgramTabsAction
{
    use ImageHelper;
    public function handle(array $data)
    {
        $ProgramTabs = ProgramTabs::create($data);
        $this->StoreImage($data,$ProgramTabs,'ProgramTabs');
        return $ProgramTabs;
    }
}



