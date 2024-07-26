<?php
namespace App\ViewModels\PagesView;
use App\Models\Page;
use App\Models\TranslationKey;
use Spatie\ViewModels\ViewModel;

class PagesViewModel extends ViewModel
{
    public  $pages;
    public  $type;
    public  $translation;
    public  $translationFirst;
    public  $routeCreate;
    public  $viewTable;
    public  $routeView;
    public  $allPage;

    public function __construct($pages = null)
    {
        $this->pages = is_null($pages) ? new Page(old()) : $pages;
        $this->type = is_null($pages)?'Create':'Edit' ;
        $this->translation = TranslationKey::get();
        $this->translationFirst = TranslationKey::first();
        $this->routeCreate = route('admin.pages.create');
        $this->routeView = route('admin.pages.index');
        $this->viewTable = 'Pages';
        $this->allPage = Page::get();
    }

    public function action(): string
    {
        return is_null($this->pages->id)
            ? route('admin.pages.store')
            : route('admin.pages.update', $this->pages->id);
    }

    public function method(): string
    {
        return is_null($this->pages->id) ? 'POST' : 'PUT';
    }
}
