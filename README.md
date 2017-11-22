# Welcome To Kitchen Finder.

## Wireframes

* <a href="https://www.fluidui.com/editor/live/preview/cF9PU2E4NXJPbVREeWdGT0hOV0ZPek40UXRSSzZHZEJ2dg==">Link to webpage mockup and diagram of the backend relationships on FluidUI</a>

* <a href="https://www.lucidchart.com/invitations/accept/1f91db54-c8a8-4922-9016-a40b6cb4bde4">
  Link to component sketch and routes on Lucid
</a>


## React State Object

state = {
  kitchens: {
    list: [array of kitchen objects meeting search parameters],
    selected: {kitchenID}  
    },
  reservations: {
    reservations: [array of reservation objects belonging to a user],
    selectedReservation: {reservationID}
  },
  equipment: {
    list: [array of equipment objects for selected kitchen]
  },
  kitchenReviews: {
    list: [array of review objects for selected kitchen]
  },
  guestReviews: {
    list: [array of review objects for selected guest]
}


## External APIs

* Google Maps

## External Libraries
