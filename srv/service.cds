using demo from '../db/schema';

service OrdersService {
  entity Orders as projection on demo.Orders;
}
