# bitInsured
Blockchain based P2P Insurance protocol

## Protocol:

There are multiple roles defined in this network which are as follows:
**Customer** : This is the person who wants to buy insurance for a fixed premium for the next 30 years. 
**Validator** : This role is of a user who has expertise in checking the document and validating it for the network. Define the risk of user, premium and coverage options for this user.
**Insurance Backer**: These are users who will be providing Liquidity to the insurance pool, will be voting on terms of validator and be rewarded with liquidity tokens and premium fees.
**Policy**: There will be multiple policy options available for customers to decide from (Smart contracts) these policies will be curated by validators and insurance backers.

## How will this network operate?
- A customer applies for insurance with the required document, according to the policy they want to adopt.
- Set of randomly chosen validators will go through the documents, check for its validity and approve or disapprove the request and send the application for approval of Insurance Backers.
- Insurance Backers will vote on the application within 24 hours and confirm customer
- Customers after approval will pay a premium as required by the policy.
    - On failing to pay a premium on the required date, the validator will impose a penalty on the customer and will be added to the chain.
- In case of an unfortunate event, the customer will apply for a claim with the required documentation as set by the policy. 
    - The documents will be sent to a randomly chosen set of the validator and due approval will be given by the validators for the documents. 
    - The approval or disapproval will be sent to the network and Insurance backers will release the amount in 24 hours of validators approval.
