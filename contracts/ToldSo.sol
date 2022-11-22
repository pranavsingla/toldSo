// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract ToldSo {
    struct Post {
        string title;
        string body;
        uint256 timestamp;
    }

    mapping(address => Post[]) private _authorToPosts;

    function createPost(string memory title, string memory body) external {
        Post memory post = Post(title, body, block.timestamp);
        _authorToPosts[msg.sender].push(post);
    }

    function getPostsByAuthor(address author)
        external
        view
        returns (Post[] memory)
    {
        return _authorToPosts[author];
    }
}















// // SPDX-License-Identifier: MIT
// pragma solidity ^0.8.17;

// contract Told {
//     struct Post {
//         string title;
//         string body;
//         uint256 timestamp;
//     }

//     mapping(address => Post[]) private authorToPosts;

//     function createPost(string memory title, string memory body) external {
//         Post memory post = Post(title, content, block.timestamp);
//         authorToPosts[msg sender] push()
//     }

//     function getPosts(address user) external view returns (Post[] memory) {
//         return _userToPost[user];
//     }
// }
