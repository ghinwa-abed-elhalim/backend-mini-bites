<?php
$tasks = [
    ["id" => 1, "title" => "Submit backend web project", "status" => "pending", "due"=> "19-04-2025"],
    ["id" => 2, "title" => "Go shopping", "status" => "done", "due"=> "18-04-2025"],
    ["id" => 3, "title" => "Submit final web project", "status" => "pending", "due"=> "21-04-2025"],
    ["id" => 4, "title" => "Go for a walk", "status" => "done", "due"=> "17-04-2025"]
];

function filterStatus(array $tasks, string $status): array {
    $filteredTasks =[];
    foreach ($tasks as $task) {
        if ($task["status"] === $status) {
            $filteredTasks[] = $task;
        }
    }
    return $filteredTasks;
}

function groupStatus(array $tasks): array {
    $groupedTasks = [];
    foreach ($tasks as $task) {
        $status = $task["status"];
        if (!isset($groupedTasks[$status])) {
            $groupedTasks[$status] = [];
        }
        $groupedTasks[$status][] = $task;
    }
    return $groupedTasks;
}
