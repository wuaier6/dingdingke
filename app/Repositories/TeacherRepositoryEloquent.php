<?php

namespace App\Repositories;

use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use App\Repositories\TeacherRepository;
use App\Models\Teacher;

/**
 * Class TeacherRepositoryEloquent
 * @package namespace App\Repositories;
 */
class TeacherRepositoryEloquent extends BaseRepository implements TeacherRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return Teacher::class;
    }

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }
}
