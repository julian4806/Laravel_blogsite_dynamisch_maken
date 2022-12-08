<x-layout>

    <header class="max-w-xl mx-auto mt-20">
        <h1 class="text-4xl">
            Latest <span class="text-blue-500 text-center">Laravel From Scratch</span> News
        </h1>

        <form action="/create" method="POST" class="flex flex-col gap-6 px-20 py-10" enctype="multipart/form-data">
            @csrf
            <div class="flex flex-col">
                <label for="title">title</label>
                <input type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="title">
            </div>
            <div class="flex flex-col">
                <label for="introduction">introduction</label>
                <textarea type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="introduction"></textarea>
            </div>

            <div class="flex flex-col">
                <label for="author">author</label>
                <input type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="author" placeholder="Lary Laracore">
            </div>
            <div class="flex flex-col">
                <label for="author_status">author_status</label>
                <input type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="author_status" placeholder="Mascot at Laracasts">
            </div>
            <div class="flex flex-col">
                <label for="tags">tags</label>
                <input type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="tags" placeholder="TECHNIQUES, UPDATES">
            </div>
            <div class="flex flex-col">
                <label for="body_title">body_title</label>
                <input type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="body_title">
            </div>
            <div class="flex flex-col">
                <label for="body">body</label>
                <textarea type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="body"></textarea>
            </div>
            <div class="flex flex-col">
                <label for="conclusion_title">conclusion_title</label>
                <input type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="conclusion_title">
            </div>
            <div class="flex flex-col">
                <label for="conclusion">conclusion</label>
                <textarea type="text" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="conclusion"></textarea>
            </div>
            <div class="flex flex-col">
                <label for="image">image</label>
                <input type="file" class="p-2 border-4 rounded-xl border-black border-opacity-5 focus:outline-none"
                    name="image">

                @error('image')
                    <p class="p-2 border-4 rounded-xl border-black border-opacity-5">
                        {{ $message }}
                    </p>
                @enderror

            </div>

            <input type="submit" name="submit" value="submit"
                class="cursor-pointer transition-colors duration-300 bg-blue-500 hover:bg-blue-600 mt-4 lg:mt-0 lg:ml-3 rounded-full text-xs font-semibold text-white uppercase py-3 px-8">
        </form>
    </header>
</x-layout>
