<?php

namespace App\Repositories;

use Prettus\Repository\Eloquent\BaseRepository;
use Prettus\Repository\Criteria\RequestCriteria;
use App\Repositories\LessonRepository;
use App\Models\Lesson;
use DB;
/**
 * Class LessonRepositoryEloquent
 * @package namespace App\Repositories;
 */
class LessonRepositoryEloquent extends BaseRepository implements LessonRepository
{
    /**
     * Specify Model class name
     *
     * @return string
     */
    public function model()
    {
        return Lesson::class;
    }

    

    /**
     * Boot up the repository, pushing criteria
     */
    public function boot()
    {
        $this->pushCriteria(app(RequestCriteria::class));
    }


    public function lesson_list(){
        $sql = <<<SQLCODE
            SELECT
                l.*, t. NAME AS teacher_name
            FROM
                k_lesson l
            LEFT JOIN k_teacher t ON l.teacher_id = t.id
            order by l.start_time desc
SQLCODE;
        return DB::select($sql);
    }

}
