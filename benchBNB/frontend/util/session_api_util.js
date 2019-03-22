export const signUp = (user) => (
    $.ajax({
        method: "POST", 
        url: 'api/users',
        // data: {user}
    })
); 

export const login = (user) => (
    $.ajax({
        method: "POST",
        url: `api/session`,
        data: {user: user}
    })
);



export const logout = () => (
    $.ajax({
        method: "POST",
        url: 'api/users'
    })
);

