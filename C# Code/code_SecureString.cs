using System;
using System.Net;
using System.Security;
using Renci.SshNet;

namespace SFTP_Client
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string host = "<host>";
            int port = 22;
            string username = "<user>";
            string remoteDirectory = "<path/to/remote/directory>";

            // Create a SecureString for the password
            SecureString securePassword = new SecureString();
            foreach (char c in "<password>") // Replace with the actual password
            {
                securePassword.AppendChar(c);
            }
            securePassword.MakeReadOnly();

            // Convert SecureString to plain text (not recommended, but required for SftpClient)
            string password = new System.Net.NetworkCredential(string.Empty, securePassword).Password;

            // Use the password with SftpClient
            using (SftpClient client = new SftpClient(new PasswordConnectionInfo(host, port, username, password)))
            {
                client.Connect();

                //new Program().DeleteFiles(client, "");

                //new Program().Rename(client, "");

                new Program().ShowFiles(client, remoteDirectory);

                client.Disconnect();
            }

            // Clear the password from memory
            password = null;
            securePassword.Dispose();

            Console.ReadLine();
        }

        // Get list of files present in remote server
        private void ShowFiles(SftpClient client, string remoteDirectory)
        {
            var paths = client.ListDirectory(remoteDirectory);

            foreach (var path in paths)
            {
                Console.WriteLine(path.IsDirectory ? "Directory: " + path.FullName : "File: " + path.FullName);
            }
        }
    }
}