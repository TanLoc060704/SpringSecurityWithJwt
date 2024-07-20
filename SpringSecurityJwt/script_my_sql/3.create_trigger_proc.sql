use springsecurity;

create trigger after_user_insert
after insert on user
for each row
begin
    insert into account(account_id, username, email, avatar, dob, gender)
    values(new.user_id, new.username, new.email, null, null, null);
end;