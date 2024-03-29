<x-layout>
    <header class="max-w-xl mx-auto mt-20 text-center">
        <h1 class="text-4xl">
            Latest <span class="text-blue-500">Laravel From Scratch</span> News
        </h1>

        <h2 class="inline-flex mt-2">By Lary Laracore <img src="{{ asset('/assets/img/lary-head.svg') }}"
                alt="Head of Lary the mascot"></h2>

        <p class="text-sm mt-14">
            Another year. Another update. We're refreshing the popular Laravel series with new content.
            I'm going to keep you guys up to speed with what's going on!
        </p>

        @error('value')
            Er is iets mis met de VALUE
        @enderror

        <div class="space-y-2 lg:space-y-0 lg:space-x-4 mt-8">
            <!--  Category -->
            <div class="relative flex lg:inline-flex items-center bg-gray-100 rounded-xl">
                <select class="flex-1 appearance-none bg-transparent py-2 pl-3 pr-9 text-sm font-semibold">
                    <option value="category" disabled selected>Category
                    </option>
                    <option value="personal">Personal</option>
                    <option value="business">Business</option>
                </select>

                <svg class="transform -rotate-90 absolute pointer-events-none" style="right: 12px;" width="22"
                    height="22" viewBox="0 0 22 22">
                    <g fill="none" fill-rule="evenodd">
                        <path stroke="#000" stroke-opacity=".012" stroke-width=".5" d="M21 1v20.16H.84V1z">
                        </path>
                        <path fill="#222"
                            d="M13.854 7.224l-3.847 3.856 3.847 3.856-1.184 1.184-5.04-5.04 5.04-5.04z">
                        </path>
                    </g>
                </svg>
            </div>

            <!-- Other Filters -->
            <div class="relative flex lg:inline-flex items-center bg-gray-100 rounded-xl">
                <select class="flex-1 appearance-none bg-transparent py-2 pl-3 pr-9 text-sm font-semibold">
                    <option value="category" disabled selected>Other Filters
                    </option>
                    <option value="foo">Foo
                    </option>
                    <option value="bar">Bar
                    </option>
                </select>

                <svg class="transform -rotate-90 absolute pointer-events-none" style="right: 12px;" width="22"
                    height="22" viewBox="0 0 22 22">
                    <g fill="none" fill-rule="evenodd">
                        <path stroke="#000" stroke-opacity=".012" stroke-width=".5" d="M21 1v20.16H.84V1z">
                        </path>
                        <path fill="#222"
                            d="M13.854 7.224l-3.847 3.856 3.847 3.856-1.184 1.184-5.04-5.04 5.04-5.04z">
                        </path>
                    </g>
                </svg>
            </div>

            <!-- Search -->
            <div class="relative flex lg:inline-flex items-center bg-gray-100 rounded-xl px-3 py-2">
                <form method="GET" action="{{ route('search') }}" class="flex">
                    <input type="text" name="value" placeholder="Find something"
                        class="bg-transparent font-semibold text-sm focus:outline-none"
                        value="@if (strlen(request()->get('value')) > 0) {{ request()->get('value') }} @endif" />
                    <select id="category" name="category"
                        class="rounded-xl text-sm focus:outline-none bg-transparent cursor-pointer">
                        <option value="everything" @if (request()->get('category') == 'everything' || request()->get('category') == '') selected @endif>Everything</option>
                        <option value="title" @if (request()->get('category') == 'title') selected @endif>Title</option>
                        <option value="author" @if (request()->get('category') == 'author') selected @endif>Author</option>
                        <option value="body" @if (request()->get('category') == 'body') selected @endif>Body</option>
                    </select>
                </form>
                {{-- <span class="text-red-700 text-xs">The value is required for searching</span> --}}
            </div>


        </div>
    </header>

    <main class="max-w-6xl mx-auto mt-6 lg:mt-20 space-y-6">
        <article
            class="transition-colors duration-300 hover:bg-gray-100 border border-black border-opacity-0 hover:border-opacity-5 rounded-xl">
            @foreach ($listings as $listing)
                @if ($loop->index == 0)
                    <div class="py-6 px-5 lg:flex">
                        <div class="flex-1 lg:mr-8">
                            <img src="{{ asset('/assets/img/illustration-1.png') }}" alt="Blog Post illustration"
                                class="rounded-xl">
                        </div>

                        <div class="flex-1 flex flex-col justify-between">
                            <header class="mt-8 lg:mt-0">
                                <div class="space-x-2">
                                    @include('layouts.tags-loop')
                                </div>
                                <div class="mt-4">
                                    <h1 class="text-3xl">
                                        {{ $listing->title }}
                                    </h1>

                                    <span class="mt-2 block text-gray-400 text-xs">
                                        @include('layouts.publish-date')
                                    </span>
                                </div>
                            </header>

                            <div class="text-sm mt-2">
                                <p>
                                    {!! nl2br(e($listing->introduction)) !!}
                                </p>
                            </div>

                            <footer class="flex justify-between items-center mt-8">
                                <div class="flex items-center text-sm" style="width:65%;">
                                    <img src="{{ asset('/assets/img/lary-avatar.svg') }}" alt="Lary avatar">
                                    <div class="ml-3">
                                        <h5 class="font-bold">{{ $listing->author }}</h5>
                                        <h6>{{ $listing->author_status }}</h6>
                                    </div>
                                </div>
                                <div class="hidden lg:block">
                                    <a href="/listings/{{ $listing->id }}"
                                        class="transition-colors duration-300 text-xs font-semibold bg-gray-200 hover:bg-gray-300 rounded-full py-2 px-8">Read
                                        More</a>
                                </div>
                            </footer>
                        </div>
                    </div>
                @endif
            @endforeach
        </article>

        {{-- Start --}}



        <div class="lg:grid lg:grid-cols-2">
            @foreach ($listings as $listing)
                @if ($loop->index == 1 || $loop->index == 2)
                    <article
                        class="transition-colors duration-300 hover:bg-gray-100 border border-black border-opacity-0 hover:border-opacity-5 rounded-xl">
                        <div class="py-6 px-5">
                            <div>
                                <img src="{{ asset('/assets/img/illustration-2.png') }}" alt="Blog Post illustration"
                                    class="rounded-xl">
                            </div>

                            <div class="mt-8 flex flex-col justify-between">
                                <header>
                                    <div class="space-x-2">
                                        @include('layouts.tags-loop')
                                    </div>

                                    <div class="mt-4">
                                        <h1 class="text-3xl">
                                            {{ $listing->title }}
                                        </h1>

                                        <span class="mt-2 block text-gray-400 text-xs">
                                            @include('layouts.publish-date')
                                        </span>
                                    </div>
                                </header>

                                <div class="text-sm mt-4">
                                    <p>
                                        {!! nl2br(e($listing->introduction)) !!}
                                    </p>
                                </div>

                                <footer class="flex justify-between items-center mt-8">
                                    <div class="flex items-center text-sm" style="width:65%;">
                                        <img src="{{ asset('/assets/img/lary-avatar.svg') }}" alt="Lary avatar">
                                        <div class="ml-3">
                                            <h5 class="font-bold">{{ $listing->author }}</h5>
                                            <h6>{{ $listing->author_status }}</h6>
                                        </div>
                                    </div>

                                    <div>
                                        <a href="/listings/{{ $listing->id }}"
                                            class="transition-colors duration-300 text-xs font-semibold bg-gray-200 hover:bg-gray-300 rounded-full py-2 px-8">Read
                                            More</a>
                                    </div>
                                </footer>
                            </div>
                        </div>
                    </article>
                @endif
            @endforeach
        </div>
        {{-- Start --}}


        <div class="lg:grid lg:grid-cols-3">
            @foreach ($listings as $listing)
                @if ($loop->index >= 3)
                    <article
                        class="transition-colors duration-300 hover:bg-gray-100 border border-black border-opacity-0 hover:border-opacity-5 rounded-xl">
                        <div class="py-6 px-5">
                            <div>
                                <img src="{{ asset('/assets/img/illustration-3.png') }}" alt="Blog Post illustration"
                                    class="rounded-xl">
                            </div>

                            <div class="mt-8 flex flex-col justify-between">
                                <header>
                                    <div class="space-x-2">
                                        @include('layouts.tags-loop')
                                    </div>
                                    <div class="mt-4">
                                        <h1 class="text-3xl">
                                            {{ $listing->title }}
                                        </h1>

                                        <span class="mt-2 block text-gray-400 text-xs">
                                            @include('layouts.publish-date')
                                        </span>
                                    </div>
                                </header>

                                <div class="text-sm mt-4">
                                    <p>
                                        {!! nl2br(e($listing->introduction)) !!}
                                    </p>
                                </div>

                                <footer class="flex justify-between items-center mt-8">
                                    <div class="flex items-center text-sm" style="width:50%;">
                                        <img src="{{ asset('/assets/img/lary-avatar.svg') }}" alt="Lary avatar">
                                        <div class="ml-3">
                                            <h5 class="font-bold">{{ $listing->author }}</h5>
                                            <h6>{{ $listing->author_status }}</h6>
                                        </div>
                                    </div>

                                    <div>
                                        <a href="/listings/{{ $listing->id }}"
                                            class="transition-colors duration-300 text-xs font-semibold bg-gray-200 hover:bg-gray-300 rounded-full py-2 px-8">Read
                                            More</a>
                                    </div>
                                </footer>
                            </div>
                        </div>
                    </article>
                @endif
            @endforeach
        </div>
        {{ $listings->links() }}
    </main>
</x-layout>
{{-- <a href="/create">add a listing here!</a> --}}
