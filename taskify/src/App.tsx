import React, { useState } from "react";
import { InputField } from "./components/input-field/InputField.component";
import { TodoList } from "./components/todo-list/TodoList.component";
import { Todo } from "./models/Todo";

const App: React.FC = () => {
  const [todo, setTodo] = useState<string>("");
  const [toDos, setToDos] = useState<Array<Todo>>([]);

  // console.log(todo);
  const handleSubmit = (e: React.FormEvent<HTMLFormElement>): void => {
    e.preventDefault();
    if (todo !== "") {
      const newTodo: Todo = {
        id: Math.random() * (1000 - 1) + 1,
        text: todo,
        isDone: false,
      };
      setToDos([...toDos, newTodo]);
      setTodo("");
    }
  };

  console.log(toDos);

  return (
    <div className="w-screen min-h-screen flex flex-col items-center bg-blue-400 font-Neucha">
      <span className="uppercase text-4xl my-5 text-white z-10 text-center sm:text-5xl sm:my-8">
        Taskify
      </span>
      <InputField
        todo={todo}
        setTodo={setTodo}
        toDos={toDos}
        handleSubmit={handleSubmit}
      />
      <div className="w-full flex items-center justify-center">
        <TodoList toDos={toDos} setToDos={setToDos} />
      </div>
    </div>
  );
};

export default App;
