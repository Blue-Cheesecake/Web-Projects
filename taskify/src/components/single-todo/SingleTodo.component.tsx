import React, { useState, useRef, useEffect } from "react";
import { Todo } from "../../models/Todo";
import { AiOutlineEdit } from "react-icons/ai";
import { RiDeleteBinLine } from "react-icons/ri";
import { MdOutlineDoneOutline } from "react-icons/md";

interface Props {
  todo: Todo;
  toDos: Array<Todo>;
  // For deleting
  setToDos: React.Dispatch<React.SetStateAction<Todo[]>>;
}

export const SingleTodo: React.FC<Props> = ({
  todo,
  toDos,
  setToDos,
}: Props) => {
  const [isEditing, setIsEditing] = useState<boolean>(false);
  const [editedTodo, setEditedTodo] = useState<string>(todo.text);

  const handleEditing = (e: React.MouseEvent): void => {
    if (isEditing) return;
    e.preventDefault();
    setIsEditing(!isEditing);
  };

  const handleSubmit = (e: React.FormEvent): void => {
    e.preventDefault();
    setToDos(
      toDos.map((value) => {
        if (value.id === todo.id) {
          return {
            ...value,
            text: editedTodo,
          };
        }
        return value;
      })
    );
    setIsEditing(false);
  };

  const handleDelete = (id: number): void => {
    const newToDos: Array<Todo> = toDos.filter((todo) => todo.id !== id);
    setToDos(newToDos);
  };

  const handleDone = (id: number): void => {
    const newToDos: Array<Todo> = toDos.map((todo) => {
      if (todo.id === id) {
        todo.isDone = !todo.isDone;
      }
      return todo;
    });
    setToDos(newToDos);
  };

  const inputRef = useRef<HTMLInputElement>(null);

  useEffect(() => {
    inputRef.current?.focus();
  }, [isEditing]);

  return (
    <form
      className="flex justify-between bg-white rounded-2xl overflow-hidden shadow-xl"
      onSubmit={(e) => {
        handleSubmit(e);
      }}
    >
      {isEditing ? (
        <input
          ref={inputRef}
          type="text"
          className="py-7 px-8 text-xl border-none transition outline-none"
          value={editedTodo}
          onChange={(e) => {
            setEditedTodo(e.target.value);
          }}
        />
      ) : todo.isDone ? (
        <span className="w-full py-7 px-8 text-xl border-none transition line-through">
          {todo.text}
        </span>
      ) : (
        <span className="w-full py-7 px-8 text-xl border-none transition">
          {todo.text}
        </span>
      )}

      <div id="icons" className="ml-8 mr-8 flex justify-center items-center">
        <span
          className="mr-3 hover:cursor-pointer"
          onClick={(e) => handleEditing(e)}
        >
          <AiOutlineEdit />
        </span>
        <span
          className="mr-3  hover:cursor-pointer"
          onClick={() => handleDelete(todo.id)}
        >
          <RiDeleteBinLine />
        </span>
        <span
          className="hover:cursor-pointer"
          onClick={() => handleDone(todo.id)}
        >
          <MdOutlineDoneOutline />
        </span>
      </div>
    </form>
  );
};
