# বেশিরভাগ প্রকল্পের জন্য, এই ওয়ার্কফ্লো ফাইলের পরিবর্তনের প্রয়োজন হবে না; আপনি সহজভাবে প্রয়োজন
# এটি আপনার সংগ্রহস্থলে প্রতিশ্রুতিবদ্ধ করা।
#
# আপনি বিশ্লেষণ করা ভাষার সেট ওভাররাইড করতে এই ফাইলটি পরিবর্তন করতে চাইতে পারেন,
# অথবা কাস্টম প্রশ্ন প্রদান বা যুক্তি তৈরি করতে।
#
# ******** নোট ********
# আমরা আপনার সংগ্রহস্থলে ভাষা সনাক্ত করার চেষ্টা করেছি। অনুগ্রহ করে চেক করুন
# আপনার সঠিক সেট আছে তা নিশ্চিত করতে নীচে সংজ্ঞায়িত `language` ম্যাট্রিক্স
# সমর্থিত CodeQL ভাষা।
#
নাম: "কোডকিউএল অ্যাডভান্সড"
অন: 
ধাক্কা:
শাখা: [ "প্রধান"]
pull_request:
শাখা: [ "প্রধান"]
সময়সূচী:
- ক্রোন: '17 4 ** 4'
চাকরি:
বিশ্লেষণ:
নাম: বিশ্লেষণ করুন ($ {{ matrix.language}})
# রানার আকার CodeQL বিশ্লেষণের সময়কে প্রভাবিত করে। আরও জানতে, দয়া করে দেখুন:
# - https://gh.io/recommended-hardware-resources-for-running-codeql
# - https://gh.io/supported-runners-and-hardware-resources
# - https://gh.io/using-larger-runners (শুধুমাত্র GitHub.com)
# সম্ভাব্য বিশ্লেষণ সময়ের উন্নতির জন্য বৃহত্তর সংস্থান সহ বৃহত্তর রানার বা মেশিন ব্যবহার করার কথা বিবেচনা করুন।
রান-অন: ${{(matrix.language == 'swift' && 'macos-latest') || 'উবুন্টু-সর্বশেষ' }}
অনুমতি:
# সমস্ত কর্মপ্রবাহের জন্য প্রয়োজনীয়
নিরাপত্তা-ঘটনা: লিখুন
# অভ্যন্তরীণ বা ব্যক্তিগত CodeQL প্যাক আনতে হবে
প্যাকেজ: পড়ুন
