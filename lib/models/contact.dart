class Contact {
  final String name;
  final String phoneNumber;
  final String imagePath;
  final String role;

  Contact({
    required this.name,
    required this.phoneNumber,
    required this.imagePath,
    required this.role,
  });
}

// Data statis kontak
class ContactData {
  static List<Contact> getContacts() {
    return [
      Contact(
        name: 'Budi Santoso',
        phoneNumber: '+62 812-3456-7890',
        imagePath: 'assets/images/contact_1.png',
        role: 'Manager',
      ),
      Contact(
        name: 'Siti Nurhaliza',
        phoneNumber: '+62 813-4567-8901',
        imagePath: 'assets/images/contact_2.png',
        role: 'Designer',
      ),
      Contact(
        name: 'Ahmad Wijaya',
        phoneNumber: '+62 814-5678-9012',
        imagePath: 'assets/images/contact_3.png',
        role: 'Developer',
      ),
      Contact(
        name: 'Dewi Lestari',
        phoneNumber: '+62 815-6789-0123',
        imagePath: 'assets/images/contact_4.png',
        role: 'Marketing',
      ),
      Contact(
        name: 'Eko Prasetyo',
        phoneNumber: '+62 816-7890-1234',
        imagePath: 'assets/images/contact_5.png',
        role: 'Sales',
      ),
      Contact(
        name: 'Rina Wati',
        phoneNumber: '+62 817-8901-2345',
        imagePath: 'assets/images/contact_6.png',
        role: 'HR Manager',
      ),
      Contact(
        name: 'Joko Widodo',
        phoneNumber: '+62 818-9012-3456',
        imagePath: 'assets/images/contact_7.png',
        role: 'CEO',
      ),
      Contact(
        name: 'Maya Sari',
        phoneNumber: '+62 819-0123-4567',
        imagePath: 'assets/images/contact_8.png',
        role: 'Accountant',
      ),
      Contact(
        name: 'Rudi Hartono',
        phoneNumber: '+62 821-1234-5678',
        imagePath: 'assets/images/contact_9.png',
        role: 'Engineer',
      ),
      Contact(
        name: 'Linda Wijayanti',
        phoneNumber: '+62 822-2345-6789',
        imagePath: 'assets/images/contact_10.png',
        role: 'Designer',
      ),
      Contact(
        name: 'Hendra Gunawan',
        phoneNumber: '+62 823-3456-7890',
        imagePath: 'assets/images/contact_11.png',
        role: 'Developer',
      ),
      Contact(
        name: 'Putri Ayu',
        phoneNumber: '+62 824-4567-8901',
        imagePath: 'assets/images/contact_12.png',
        role: 'Content Writer',
      ),
      Contact(
        name: 'Bambang Suryanto',
        phoneNumber: '+62 825-5678-9012',
        imagePath: 'assets/images/contact_13.png',
        role: 'Supervisor',
      ),
      Contact(
        name: 'Nadia Putri',
        phoneNumber: '+62 826-6789-0123',
        imagePath: 'assets/images/contact_14.png',
        role: 'Analyst',
      ),
      Contact(
        name: 'Agus Setiawan',
        phoneNumber: '+62 827-7890-1234',
        imagePath: 'assets/images/contact_15.png',
        role: 'Consultant',
      ),
    ];
  }
}
