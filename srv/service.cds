using { demo as db } from '../db/schema';

service OrdersService {
  entity Orders as projection on db.Orders;
}
