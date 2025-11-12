using demo from '../db/schema';

service CatalogService {
  entity Orders as projection on demo.Orders;
}
