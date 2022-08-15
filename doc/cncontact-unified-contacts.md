# CNContact: unified contacts ##

Apple documentation describes unified contacts.

Contacts in different accounts that represent the same person may be
automatically linked together. Linked contacts are displayed in OS X
and iOS apps as unified contacts. A unified contact is an in-memory,
temporary view of the set of linked contacts that are merged into
one contact.

By default the Contacts framework returns unified contacts. Each fetched
unified contact (CNContact) object has its own unique identifier that is
different from any individual contact’s identifier in the set of linked
contacts. A refetch of a unified contact should be done with its
identifier.
