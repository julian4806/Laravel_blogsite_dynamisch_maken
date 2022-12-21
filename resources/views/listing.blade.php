<x-layout>

    <main class="max-w-6xl mx-auto mt-10 lg:mt-20 space-y-6">
        <article class="max-w-4xl mx-auto lg:grid lg:grid-cols-12 gap-x-10">
            <div class="col-span-4 lg:text-center lg:pt-14 mb-10">
                <img src="/assets/img/illustration-1.png" alt="" class="rounded-xl">

                <p class="mt-4 block text-gray-400 text-xs">
                    @include('layouts.publish-date')
                </p>

                <div class="flex items-center lg:justify-center text-sm mt-4">
                    <img src="/assets/img/lary-avatar.svg" alt="Lary avatar">
                    <div class="ml-3 text-left">
                        <h5 class="font-bold">{{ $listing->author }}</h5>
                        <h6>{{ $listing->author_status }}</h6>
                    </div>
                </div>
            </div>

            <div class="col-span-8">
                <div class="hidden lg:flex justify-between mb-6">
                    <a href="/" class="transition-colors duration-300 relative inline-flex items-center text-lg hover:text-blue-500">
                        <svg width="22" height="22" viewBox="0 0 22 22" class="mr-2">
                            <g fill="none" fill-rule="evenodd">
                                <path stroke="#000" stroke-opacity=".012" stroke-width=".5" d="M21 1v20.16H.84V1z">
                                </path>
                                <path class="fill-current" d="M13.854 7.224l-3.847 3.856 3.847 3.856-1.184 1.184-5.04-5.04 5.04-5.04z">
                                </path>
                            </g>
                        </svg>
                        Back to Posts
                    </a>

                    <div class="space-x-2">
                        @include('layouts.tags-loop')
                    </div>
                </div>

                <h1 class="font-bold text-3xl lg:text-4xl mb-10">
                    {{ $listing->title }}
                </h1>

                <div class="space-y-4 lg:text-lg leading-loose">
                    <p>
                        {!! nl2br(e($listing->introduction)) !!}
                    </p>
                    <h2 class="font-bold text-lg">{{ $listing->body_title }}</h2>
                    <p>
                        {!! nl2br(e($listing->body)) !!}
                    </p>
                    <h2 class="font-bold text-lg">{{ $listing->conclusion_title }}</h2>
                    <p>
                        {!! nl2br(e($listing->conclusion)) !!}
                    </p>
                </div>
            </div>
        </article>

        <hr>

        <section>

            <p class="font-bold text-lg">Comments</p>

            <div>
                <p class="font-bold mt-3">Plaats een comment</p>

                <form action="{{ route('createcomment_link') }}" method="POST">
                    @csrf

                    <input type="hidden" name="comment_post_id" value="{{ $listing->id }}">
                        <div class="mb-3 mt-3">
                            <p class="mb-0 font-bold">Username:</p>
                            <input type="text" name="comment_username" class="border-style: solid; border-2 border-black rounded"/>
                        </div>

                        <div class="mb-3">
                            <p class="mb-0 font-bold">Inhoud:</p>
                            <textarea name="comment_body" class="border-style: solid; border-2 border-black rounded"></textarea>
                        </div>
                    <button type="submit" class="px-2 py-1 rounded bg-red-600 text-white">Maak een comment</button>

                </form>
            </div>

            @foreach ($comments as $comment)
            <div class="border-style: solid; border-2 border-black p-3 mt-4 rounded">

                <p>{{ $comment->comment_username }}</p>
                <p>{{ $comment->comment_body }}</p>

            </div>
            @endforeach

        </section>

    </main>
</x-layout>

{{--
    {{ $listing->title }}
--}}