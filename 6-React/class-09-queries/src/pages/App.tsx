import { UserCard } from "../components/UserCard";
import { useQueryCep } from "../hooks/userQueryCep";

type User = {
  id: string;
  name: string;
  phone: string;
  username: string;
  website: string;
};

export function App() {
  const { data, isLoading, error } = useQueryCep();
  console.log(data);

  return (
    <>
      <h1>App</h1>
      {isLoading && <div>Loading...</div>}
      {!isLoading && error && <div>Error...</div>}
      {data?.map((user: User) => {
        return <UserCard key={user.id} name={user.name} phone={user.phone} />;
      })}
    </>
  );
}
