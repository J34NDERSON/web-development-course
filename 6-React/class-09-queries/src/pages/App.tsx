import { useQueryCep } from "../hooks/userQueryCep";

export function App() {
  const { data, isLoading, error } = useQueryCep();
  console.log(data);

  return (
    <>
      <h1>App</h1>
      {isLoading && <div>Loading...</div>}
      {!isLoading && error && <div>Error...</div>}
      <pre>{data}</pre>
    </>
  );
}
