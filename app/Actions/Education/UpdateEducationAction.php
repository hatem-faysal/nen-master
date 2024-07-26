<?php
namespace App\Actions\Education;
use App\Helper\ImageHelper;
use App\Models\Education;

class UpdateEducationAction
{
    use ImageHelper;
    public function handle(Education $education,$data)
    {
        $education->update($data);
        $this->UpdateImage($data,$education,'Education');
        return $education;
    }
}
