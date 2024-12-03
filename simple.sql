CREATE TABLE public.item_stock_test (
    id uuid NOT NULL,
    txn_datetime timestamp with time zone NOT NULL,
    quantity_change numeric(14,7) NOT NULL,
    running_total_quantity numeric(14,7),
    item_id varchar(10) NOT NULL
);

INSERT INTO public.item_stock_test(id, txn_datetime, quantity_change, running_total_quantity, item_id) VALUES
('01907c52-2589-75b6-91e6-ece470985d9f', '2024-01-01 00:00:00+00', 10.0000000, NULL, 'aaaa'),
('01907c8f-943c-7c7b-82ed-2909cef8af8b', '2024-07-04 06:01:59+00', 10.0000000, NULL, 'aaaa'),
('01907c90-79b1-70a6-a7ff-adab8c87b638', '2024-07-04 07:05:03+00', -2.0000000, NULL, 'aaaa'),
('01907cbc-535d-7399-a906-44f121894cae', '2024-07-04 07:41:21+00', -8.0000000, NULL, 'aaaa'),
('01907cbc-535d-73a1-9aca-c03546648a4a', '2024-07-04 07:41:21+00', 8.0000000, NULL, 'bbbb'),
('01907cc7-086b-76e7-abcf-2bec10fc09f5', '2024-07-04 08:04:40+00', 3.0000000, NULL, 'aaaa'),
('01908022-3377-7c4b-97a8-1b88034e871f', '2024-07-04 23:43:48+00', -2.0000000, NULL, 'aaaa'),
('0190802a-bdb6-7236-bf73-1f33f5e1acc3', '2024-07-05 00:00:00+00', 0.0000000, NULL, 'cccc'),
('01908038-be33-719e-be7a-59d78884d51d', '2024-07-05 00:08:23+00', 1.0000000, NULL, 'aaaa'),
('01908130-c07f-7015-b4e5-8a745489b2e8', '2024-07-05 04:39:23+00', 1.0000000, NULL, 'cccc'),
('01908130-c090-71cb-8699-f4a05a47b73a', '2024-07-05 04:39:23+00', -1.0000000, NULL, 'aaaa'),
('01908138-7acf-78a0-97cb-98a686fe31b8', '2024-07-05 00:00:00+00', 100.0000000, NULL, 'dddd'),
('0190822b-9846-7a43-bcc5-939391481e1f', '2024-07-05 09:13:15+00', 9.0000000, NULL, 'cccc'),
('0190822b-985d-74db-8da5-0c9620ae1e10', '2024-07-05 09:13:15+00', -9.0000000, NULL, 'aaaa'),
('0190822b-985d-74ef-88c2-dfa4f9acaf65', '2024-07-05 09:13:15+00', -18.0000000, NULL, 'dddd');