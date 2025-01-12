<?php
use App\Http\Controllers\Admin\AboutUs\AchievementsController;
use App\Http\Controllers\Admin\AboutUs\AwardsController;
use App\Http\Controllers\Admin\AboutUs\CareersController;
use App\Http\Controllers\Admin\AboutUs\CertificatesController;
use App\Http\Controllers\Admin\AboutUs\ClientsController;
use App\Http\Controllers\Admin\AboutUs\IdentityController;
use App\Http\Controllers\Admin\AboutUs\InvestorsController;
use App\Http\Controllers\Admin\AboutUs\OurTeamController;
use App\Http\Controllers\Admin\AboutUs\PartnersController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\Education\EducationController;
use App\Http\Controllers\Admin\PagesController;
use App\Http\Controllers\Admin\profile\AdminController;
use App\Http\Controllers\Admin\profile\RoleController;
use App\Http\Controllers\Admin\profile\UsersController;
use App\Http\Controllers\Admin\Projects\ProjectController;
use App\Http\Controllers\Admin\Projects\Tabs\AboutController;
use App\Http\Controllers\Admin\Projects\Tabs\AboutTabsController;
use App\Http\Controllers\Admin\Projects\Tabs\HelpTabsController;
use App\Http\Controllers\Admin\Projects\Tabs\JoinusTabsController;
use App\Http\Controllers\Admin\Projects\Tabs\ProgramTabsController;
use App\Http\Controllers\Admin\Solution\SolutionController;
use App\Http\Controllers\Admin\StaticTableController;
use Illuminate\Support\Facades\Route;

Route::middleware('authAdmin:admin')->group(function () {
    Route::get('/',DashboardController::class)->name('dashboard');
    Route::resource('admins',AdminController::class);
    Route::resource('users',UsersController::class);
    Route::resource('roles', RoleController::class);
    Route::resource('pages', PagesController::class);
    Route::name('about.')->prefix('about')->group(function(){
        Route::resource('identity', IdentityController::class);
        Route::resource('investors', InvestorsController::class);
        Route::get('investors/many/{id?}', [InvestorsController::class,'many'])->name('investors.many');
        Route::put('investors/manypost/{id}', [InvestorsController::class,'manypost'])->name('investors.manypost');
        Route::delete('investors/manydelete/{id}', [InvestorsController::class,'manydelete'])->name('investors.manydelete');
        Route::resource('achievements', AchievementsController::class);
        Route::resource('awards', AwardsController::class);
        Route::resource('certificates', CertificatesController::class);
        Route::resource('our-team', OurTeamController::class);
        Route::resource('careers', CareersController::class);
        Route::resource('partners', PartnersController::class);
        Route::resource('clients', ClientsController::class);
    });
        Route::resource('project', ProjectController::class);
        Route::name('tabproject.')->prefix('tab-project')->group(function(){
            Route::resource('about', AboutTabsController::class);
            Route::get('section-two/create', [AboutTabsController::class,'createSectionTwo'])->name('about_sectionTwo');
            Route::get('section-two/edit', [AboutTabsController::class,'createSectionTwo'])->name('edit_about_sectionTwo');
            Route::resource('program', ProgramTabsController::class);
            
            
            Route::get('help/contactus/create', [HelpTabsController::class,'createcontactus'])->name('help_contactus');
            Route::get('help/contactus/edit/{id?}', [HelpTabsController::class,'editcontactus'])->name('edit_help_contactus');
            Route::resource('help', HelpTabsController::class);
            Route::resource('joinus', JoinusTabsController::class);
        });
        Route::resource('education', EducationController::class);
        Route::resource('solution', SolutionController::class);
});