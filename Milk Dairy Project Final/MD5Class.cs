using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Security;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualBasic;
using System.Security.Cryptography;


public class MD5Class
{
    public string Md5FromString(string Source)
    {
        byte[] Bytes;
        StringBuilder sb = new StringBuilder();

        // Check for empty string.
        if (string.IsNullOrEmpty(Source))
            throw new ArgumentNullException();

        // Get bytes from string.
        Bytes = Encoding.Default.GetBytes(Source);

        // Get md5 hash
        Bytes = MD5.Create().ComputeHash(Bytes);

        // Loop though the byte array and convert each byte to hex.
        for (int x = 0; x <= Bytes.Length - 1; x++)
            sb.Append(Bytes[x].ToString("x2"));

        // Return md5 hash.
        return sb.ToString();
    }




    private static readonly MD5 _md5 = MD5.Create();

    public string GetMd5Hash(string source)
    {
        var data = _md5.ComputeHash(Encoding.UTF8.GetBytes(source));
        StringBuilder sb = new StringBuilder();
        Array.ForEach(data, x => sb.Append(x.ToString("x2")));
        return sb.ToString();
    }

    public bool VerifyMd5Hash(string source, string hash)
    {
        var sourceHash = GetMd5Hash(source);
        StringComparer comparer = StringComparer.OrdinalIgnoreCase;
        return comparer.Compare(sourceHash, hash) == 0 ? true : false;
    }

    public string GetMd5HashBase64(string source)
    {
        var data = _md5.ComputeHash(Encoding.UTF8.GetBytes(source));
        return Convert.ToBase64String(data);
    }

    public bool VerifyMd5HashBase64(string source, string hash)
    {
        var sourceHash = GetMd5HashBase64(source);
        StringComparer comparer = StringComparer.OrdinalIgnoreCase;
        return comparer.Compare(sourceHash, hash) == 0 ? true : false;
    }
}
