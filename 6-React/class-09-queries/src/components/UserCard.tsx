import { Container } from "./style";

type user = {
  name: string;
  phone: string;
  //   username: string;
  //   website: string;
};

export function UserCard(user: user) {
  return (
    <Container>
      <strong>{user.name}</strong>
      <p>{user.phone}</p>
      {/* <p>{user.username}</p> */}
      {/* <p>{user.website}</p> */}
    </Container>
  );
}
