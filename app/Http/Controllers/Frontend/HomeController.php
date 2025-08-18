<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\CustomLanding;
use App\Models\Page;
use App\Services\PageMetaService;
use Illuminate\Support\Facades\Redirect;

class HomeController extends Controller
{
    public function __invoke()
    {

        $activeLanding = CustomLanding::getActiveLanding();

        if ($activeLanding && file_exists(public_path("custom-landings/{$activeLanding->folder}/index.html"))) {
            return response()->file(public_path("custom-landings/{$activeLanding->folder}/index.html"));
        }

        // Redirect to the custom home path if it's set and not the default '/'
        $homeRedirect = setting('home_redirect');

        if ($homeRedirect && $homeRedirect !== '/') {
            return Redirect::to($homeRedirect);
        }

        $page = Page::home();
        $meta = PageMetaService::build($page);

        $components   = $page->components;
        $isBreadcrumb = $page->is_breadcrumb;

        $locale = app()->getLocale();

        return view('frontend.pages.index', compact('page', 'isBreadcrumb', 'components', 'meta', 'locale'));
    }
}
