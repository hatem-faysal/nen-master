<?php
namespace App\Actions\Education;
use App\Helper\ImageHelper;
use App\Models\Education;

class StoreEducationAction
{
    use ImageHelper;
    public function handle(array $data)
    {
        $Education = Education::create($data);
        $this->StoreImage($data,$Education,'Education');
        return $Education;
    }
}



