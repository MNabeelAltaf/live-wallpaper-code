<x-app-layout>
    <div class="row">
        <div class="col-xl-12">
            <div class="card card-h-100">
                <div class="card-header justify-content-between d-flex align-items-center">
                    <h4 class="card-title">Add Category</h4>
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
                        <form action="{{ route('category.add') }}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="mb-3">
                                <label class="form-label" for="formrow-firstname-input">Category Name</label>
                                <input type="text" class="form-control" id="formrow-firstname-input"
                                    placeholder="Enter Category Name" name="category_name" required>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div>
                                            <label for="formFileLg" class="form-label">Category Thumbnail</label>
                                            <input class="form-control form-control-lg" id="formFileLg"
                                                accept=".jpg,.jpeg,.png,.gif" name="category_thumbnail" type="file">
                                        </div>

                                    </div>
                                </div><!-- end col -->
                            </div><!-- end row -->


                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <div class="mb-3">
                                            <input type="checkbox" class="form-check-input" id="editCategoryShow"
                                                name="show">
                                            <label for="editCategoryShow" class="form-label">Show</label>
                                        </div>
                                    </div>
                                </div><!-- end col -->
                            </div><!-- end row -->

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
