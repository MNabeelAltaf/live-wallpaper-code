@if ($wallpaper_type == 'static')
    <x-app-layout>
        <div class="row">
            <div class="col-xl-12">
                <div class="card card-h-100">
                    <div class="card-header justify-content-between d-flex align-items-center">
                        <h4 class="card-title">Add Static Wallpaper</h4>
                    </div><!-- end card header -->
                    <div class="card-body">

                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

                        {{-- validation fails message --}}
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div>
                            <form action="{{ route('create-wallpaper') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="mb-3">
                                    <label class="form-label" for="formrow-firstname-input"> Category</label>
                                    <select class="form-control" name="cat_id" id="choices-single-no-sorting">
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}">
                                                {{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label"
                                                    title="Single file per upload." data-bs-toggle="tooltip" data-bs-placement="right" title="Single file per-upload">
                                                    Thumbnail
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                        height="16" fill="currentColor" class="bi bi-info-circle"
                                                        viewBox="0 0 16 16">
                                                        <path
                                                            d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                        <path
                                                            d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                                    </svg>
                                                </label>

                                                <input class="form-control form-control-lg" id="formFileLg"
                                                    accept=".jpg,.jpeg,.png,.gif" name="thumb_path" type="file">
                                            </div>
                                        </div>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label" data-bs-toggle="tooltip"   data-bs-placement="right" title="Multiple files (10) per-upload">Wallpaper

                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-info-circle"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                    <path
                                                        d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                                </svg>

                                                </label>
                                                <input class="form-control form-control-lg"
                                                    id="formFileLg_static_wallpaper" accept=".jpg,.jpeg,.png,.gif"
                                                    name="img_path[]" type="file" multiple>
                                            </div>

                                        </div>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="choices-single-default" class="form-label">Tags</label>
                                            <input class="form-control" id="choices-text-remove-button" name="hash_tags"
                                                type="text" />
                                        </div>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label" data-bs-toggle="tooltip"   data-bs-placement="right" title="Multiple files (10) per-upload">Blur

                                                    <svg xmlns="http://www.w3.org/2000/svg" width="16"
                                                    height="16" fill="currentColor" class="bi bi-info-circle"
                                                    viewBox="0 0 16 16">
                                                    <path
                                                        d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16" />
                                                    <path
                                                        d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0" />
                                                </svg>

                                                </label>
                                                <input class="form-control form-control-lg" id="formFileLg_static_blur"
                                                    accept=".jpg,.jpeg,.png,.gif" name="blur_path[]" type="file"
                                                    multiple>
                                            </div>

                                        </div>
                                    </div><!-- end col -->
                                </div><!-- end row -->
                                <input type="hidden" value="{{ $wallpaper_type }}" name="wallpaper_type">
                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary w-md">Submit</button>
                                </div>
                            </form><!-- end form -->
                        </div>
                    </div><!-- end card body -->
                </div><!-- end card -->
            </div><!-- end col -->
        </div>
    </x-app-layout>
@elseif ($wallpaper_type == '3d')
    <x-app-layout>
        <div class="row">
            <div class="col-xl-12">
                <div class="card card-h-100">
                    <div class="card-header justify-content-between d-flex align-items-center">
                        <h4 class="card-title">Add 3D Wallpaper</h4>
                    </div><!-- end card header -->
                    <div class="card-body">
                        {{-- validation fails message --}}
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div>
                            <form action="{{ route('create-wallpaper') }}" method="POST" enctype="multipart/form-data">
                                @csrf
                                <div class="mb-3">
                                    <select class="form-control" name="category" id="choices-single-no-sorting">
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}"
                                                {{ request('category') == $category->id ? 'selected' : '' }}>
                                                {{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label">Zip file</label>
                                                <input class="form-control form-control-lg" id="formFileLg"
                                                    accept=".zip" name="zip" type="file">
                                                <div id="file-size-error" class="text-danger mt-2"
                                                    style="display:none;">
                                                    The file size exceeds the maximum allowed size of 10MB.
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label">
                                                    Blur Image</label>
                                                <input class="form-control form-control-lg"
                                                    accept=".jpg,.jpeg,.png,.gif,.webp" name="blur"
                                                    type="file">
                                            </div>

                                        </div>
                                    </div>

                                    <div class="col-md-4">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label">
                                                    Thumbnail Image</label>
                                                <input class="form-control form-control-lg"
                                                    accept=".jpg,.jpeg,.png,.gif,.webp" name="thumbnail"
                                                    type="file">
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="editCategoryShow" class="form-label">Hash Tags</label>
                                            <span><i>(Use spacebar to separate tags | Max 3 tags) </i></span>
                                            <input type="text" class="form-control" id="editCategoryShow"
                                                placeholder="Enter tags separated by spaces" />
                                            <div id="tags-container" class="mt-2 d-flex flex-wrap gap-2"></div>
                                            <input type="hidden" id="tagsField" name="tags" required />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <div>
                                                <input type="checkbox" class="form-check-input" id=""
                                                    name="show">
                                                <label for="editCategoryShow" class="form-label">Show</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <div>
                                                <input type="checkbox" class="form-check-input" id=""
                                                    name="featured">
                                                <label for="editCategoryShow" class="form-label">Featured</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6"></div>
                                </div>

                                <input type="hidden" value="{{ $wallpaper_type }}" name="wallpaper_type">


                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary w-md">Submit</button>
                                </div>
                            </form>

                        </div>
                    </div><!-- end card body -->
                </div><!-- end card -->
            </div><!-- end col -->
        </div>
    </x-app-layout>
@elseif ($wallpaper_type == 'live')
    <x-app-layout>
        <div class="row">
            <div class="col-xl-12">
                <div class="card card-h-100">
                    <div class="card-header justify-content-between d-flex align-items-center">
                        <h4 class="card-title">Add Live Wallpaper</h4>
                    </div><!-- end card header -->
                    <div class="card-body">

                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

                        {{-- validation fails message --}}
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        <div>
                            <form action="{{ route('create-wallpaper') }}" method="POST"
                                enctype="multipart/form-data">
                                @csrf
                                <div class="mb-3">
                                    <label for="formFileLg" class="form-label">Select Category</label>
                                    <select class="form-control" name="category_id" id="choices-single-no-sorting">
                                        @foreach ($categories as $category)
                                            <option value="{{ $category->id }}"
                                                {{ request('category') == $category->id ? 'selected' : '' }}>
                                                {{ $category->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label">
                                                    Thumbnail</label>
                                                <input class="form-control form-control-lg"
                                                    accept=".jpg,.jpeg,.png,.gif" name="category_thumbnail"
                                                    type="file">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <div>
                                                <label for="formFileLg" class="form-label">
                                                    Video</label>
                                                <input class="form-control form-control-lg" id="formFileLg"
                                                    accept=".mp4, .mov" name="category_video" type="file">

                                                <div id="file-size-error" class="text-danger mt-2"
                                                    style="display:none;">
                                                    The file size exceeds the maximum allowed size of 10MB.
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="mb-3">
                                            <label for="editCategoryShow" class="form-label">Hash Tags</label>
                                            <span><i>(Use spacebar to separate tags | Max 3 tags) </i></span>
                                            <input type="text" class="form-control" id="editCategoryShow"
                                                placeholder="Enter tags separated by spaces" />
                                            <div id="tags-container" class="mt-2 d-flex flex-wrap gap-2"></div>
                                            <input type="hidden" id="tagsField" name="tags" required />
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <div>
                                                <input type="checkbox" class="form-check-input" id=""
                                                    name="show">
                                                <label for="editCategoryShow" class="form-label">Show</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="mb-3">
                                            <div>
                                                <input type="checkbox" class="form-check-input" id=""
                                                    name="featured">
                                                <label for="editCategoryShow" class="form-label">Featured</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6"></div>
                                </div>

                                <input type="hidden" value="{{ $wallpaper_type }}" name="wallpaper_type">
                                <div class="mt-4">
                                    <button type="submit" class="btn btn-primary w-md">Submit</button>
                                </div>
                            </form>
                        </div>
                    </div><!-- end card body -->
                </div><!-- end card -->
            </div><!-- end col -->
        </div>
    </x-app-layout>
@endif


{{-- tags generation JS code --}}
<script>
    const inputField = document.getElementById('editCategoryShow');
    const tagsContainer = document.getElementById('tags-container');
    const tagsField = document.getElementById('tagsField');

    inputField.addEventListener('keyup', function(event) {
        let inputValue = inputField.value.trim();
        if ((event.key === " " || event.key === "Enter") && inputValue) {
            addTag(inputValue);
        }
    });

    function addTag(tag) {
        if (tagsContainer.children.length >= 3) {
            alert("You can only add up to 3 tags.");
            return;
        }
        const tagWithHash = `#${tag}`;

        const tagElement = document.createElement('span');
        tagElement.classList.add('badge', 'bg-primary', 'd-flex', 'align-items-center');
        tagElement.textContent = tagWithHash;


        const deleteButton = document.createElement('button');
        deleteButton.classList.add('btn-close', 'btn-close-white', 'ms-2');
        deleteButton.onclick = function() {
            tagsContainer.removeChild(tagElement);
            updateTagsField();
        };

        tagElement.appendChild(deleteButton);
        tagsContainer.appendChild(tagElement);
        inputField.value = '';
        updateTagsField();
    }

    function updateTagsField() {
        const tags = [];
        tagsContainer.querySelectorAll('span').forEach(tag => {
            tags.push(tag.textContent.trim());
        });
        tagsField.value = tags.join(',');
    }


    document.getElementById('submit-btn').addEventListener('click', function() {
        updateTagsField();
    });
</script>

{{-- zip file size checker --}}

<script>
    const fileInput = document.getElementById('formFileLg');
    const errorMessage = document.getElementById('file-size-error');
    const maxSizeInMB = 10; // 10MB

    fileInput.addEventListener('change', function() {
        const file = fileInput.files[0];
        if (file) {
            const fileSizeInMB = file.size / (1024 * 1024);

            if (fileSizeInMB > maxSizeInMB) {
                errorMessage.style.display = 'block';
                fileInput.value = '';
            } else {
                errorMessage.style.display = 'none';
            }
        }
    });

    document.addEventListener("DOMContentLoaded", function() {
        new Choices(document.getElementById("choices-text-remove-button"), {
            delimiter: ",",
            editItems: !0,
            maxItemCount: 5,
            removeItemButton: !0,
        });
    });


    // max 20 items allowed to upload once
    document.getElementById('formFileLg_static_wallpaper').addEventListener('change', function(e) {
        if (e.target.files.length > 10) {
            alert("You can only select up to 10 files.");
            e.target.value = "";
        }
    });

    document.getElementById('formFileLg_static_blur').addEventListener('change', function(e) {
        if (e.target.files.length > 10) {
            alert("You can only select up to 10 files.");
            e.target.value = "";
        }
    });
</script>
