import React from "react";
import { Todo } from "../../models/Todo";

interface Props {
  todo: string;
  setTodo: React.Dispatch<React.SetStateAction<string>>;
  toDos: Array<Todo>;
  handleSubmit: React.FormEventHandler<HTMLFormElement>;
}

export const InputField: React.FC<Props> = ({
  todo,
  setTodo,
  toDos,
  handleSubmit,
}: Props) => {
  return (
    <form
      onSubmit={handleSubmit}
      className="flex w-4/5 relative items-center scale-90 sm:scale-100"
    >
      <input
        type="text"
        name="text"
        id="text"
        placeholder="Enter a task"
        className="w-full rounded-full py-5 px-8 text-xl border-none transition shadow-xl focus:shadow-2xl focus:outline-none"
        value={todo}
        onChange={(e) => setTodo(e.target.value)}
      />
      <button
        type="submit"
        className="absolute w-12 h-12 rounded-full right-4 border-none text-base bg-blue-400 transition-all shadow-2xl text-white hover:bg-blue-300"
      >
        Go
      </button>
    </form>
  );
};
