<a href="https://nbd.wtf"><img align="right" height="196" src="https://user-images.githubusercontent.com/1653275/194609043-0add674b-dd40-41ed-986c-ab4a2e053092.png" /></a>

# the famous `invoicewithdescriptionhash` method for lightningd (CLN)

To compile:

```
go build
```

Or grab one from the [releases](https://github.com/fiatjaf/invoicewithdescriptionhash/releases).

Call it just like you would call `invoice`, but with a description hash (32 bytes in hex, i.e. 64 hex characters) instead of the `description` param.

## Example

```bash
~> lightning-cli invoicewithdescriptionhash 5000 test-famous-method-invoicewithdescriptionhash 1f7464aeea3a49c9ea35fdacf51883219cd807d14955d3bd1de03b9887d2384d                                                                      10:28
{
   "bolt11": "lnbc50n1p385acapp57zs4m53hr3q8qh4p0s3t8h0534k2p9ef4dxtegn5536tshgp9w9shp5ra6xfth28fyun634lkk02xyryxwdsp73f92a80gauqae3p7j8pxscqzysxqyjw5qrzjq29zewx4rezd04lpprpwsz5cesrfz30qtfkjqfw0249a3pn0uv5exzdefqqqxecqqqqqqqqqqqqqphqqjqsp5alv2yackqwd5xksfq8l2665dryhd84h7hqqn5yv8h9w2yl2zcsaq9qxsqysgqez655js80ue2qk9dafgv3eg0am0cqetz3sekx44zt3dk09j27v5s2sjma88tnjkz5u3lx57uuyszza908umd949zz26jz2wglsnfysqqpulunp",
   "description_hash": "1f7464aeea3a49c9ea35fdacf51883219cd807d14955d3bd1de03b9887d2384d",
   "expires_at": 1652193054,
   "payment_hash": "f0a15dd2371c40705ea17c22b3ddf48d6ca09729ab4cbca274a474b85d012b8b",
   "preimage": "f0e8ca8ddb3c49974a80620fecbf15b26c8645e3d77dcaa3649267cbd68de03a"
}
~> lightning-cli decodepay lnbc50n1p385acapp57zs4m53hr3q8qh4p0s3t8h0534k2p9ef4dxtegn5536tshgp9w9shp5ra6xfth28fyun634lkk02xyryxwdsp73f92a80gauqae3p7j8pxscqzysxqyjw5qrzjq29zewx4rezd04lpprpwsz5cesrfz30qtfkjqfw0249a3pn0uv5exzdefqqqxecqqqqqqqqqqqqqphqqjqsp5alv2yackqwd5xksfq8l2665dryhd84h7hqqn5yv8h9w2yl2zcsaq9qxsqysgqez655js80ue2qk9dafgv3eg0am0cqetz3sekx44zt3dk09j27v5s2sjma88tnjkz5u3lx57uuyszza908umd949zz26jz2wglsnfysqqpulunp
{
   "currency": "bc",
   "created_at": 1652193053,
   "expiry": 604800,
   "payee": "02c16cca44562b590dd279c942200bdccfd4f990c3a69fad620c10ef2f8228eaff",
   "msatoshi": 5000,
   "amount_msat": "5000msat",
   "description_hash": "1f7464aeea3a49c9ea35fdacf51883219cd807d14955d3bd1de03b9887d2384d",
   "min_final_cltv_expiry": 144,
   "payment_secret": "efd8a27716039b435a0901fead6a8d192ed3d6feb8013a1187b95ca27d42c43a",
   "features": "20024100",
   "routes": [
      [
         {
            "pubkey": "028a2cb8d51e44d7d7e108c2e80a98cc069145e05a6d2025cf554bd8866fe32993",
            "short_channel_id": "637256x871x0",
            "fee_base_msat": 0,
            "fee_proportional_millionths": 220,
            "cltv_expiry_delta": 144
         }
      ]
   ],
   "payment_hash": "f0a15dd2371c40705ea17c22b3ddf48d6ca09729ab4cbca274a474b85d012b8b",
   "signature": "3045022100c8b54a4a077f32a058adea50c8e50feedf8065628c336356a25c5b67964af329022005425be9ceb9cac2a723f353dce1202174af3f36d2d4a212b52129c8fc269240"
}
```

## License

Public domain, except you can't use it for shitcoins.
