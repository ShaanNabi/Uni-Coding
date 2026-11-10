CREATE TABLE membership (
    member_id VARCHAR(6),
    gym_id VARCHAR(4),
    start_date DATE NOT NULL,
    monthly_fee NUMERIC(5,2),
    PRIMARY KEY (member_id, gym_id),
    FOREIGN KEY (member_id) REFERENCES person(member_id),
    FOREIGN KEY (gym_id) REFERENCES gym(gym_id)
);