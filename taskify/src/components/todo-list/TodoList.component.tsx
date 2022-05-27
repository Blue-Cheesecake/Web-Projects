import React from "react";
import { Todo } from "../../models/Todo";
import { SingleTodo } from "../single-todo/SingleTodo.component";

interface Props {
  toDos: Array<Todo>;
  setToDos: React.Dispatch<React.SetStateAction<Todo[]>>;
}

export const TodoList: React.FC<Props> = ({ toDos, setToDos }: Props) => {
  const itemTodoActive = toDos.map((value) => {
    if (value.isDone) return;
    return (
      <div className="w-full p-5">
        <SingleTodo
          todo={value}
          toDos={toDos}
          setToDos={setToDos}
          key={value.id}
        />
      </div>
    );
  });

  const itemTodoCompleted = toDos.map((value) => {
    if (!value.isDone) return;
    return (
      <div className="w-full p-5">
        <SingleTodo
          todo={value}
          toDos={toDos}
          setToDos={setToDos}
          key={value.id}
        />
      </div>
    );
  });

  return (
    <div className="mt-4 w-4/5 flex flex-col justify-center items-start md:flex-row">
      {/* Completed */}
      <div className="bg-green-300 w-full md:w-3/5 rounded-lg mb-6 md:mb-0 md:mr-4">
        <h2 className="px-4 pt-4 text-white text-2xl">Active Tasks</h2>
        <div className="w-full flex flex-col justify-start items-center md:flex-row md:flex-wrap ">
          {itemTodoActive}
        </div>
      </div>
      {/* Done */}
      <div className="bg-red-400 w-full md:w-3/5 rounded-lg">
        <h2 className="px-4 pt-4 text-white text-2xl">Completed Tasks</h2>
        <div className="flex flex-col justify-start items-center md:flex-row md:flex-wrap ">
          {itemTodoCompleted}
        </div>
      </div>
    </div>
  );
};
