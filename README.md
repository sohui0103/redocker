# **Django - 9회차 Pagination, Social Login**

## **세션때 사용할 코드**
```python
{% if blogs.has_previous %}
<a href="?page=1">First</a>
<a href="?page={{blogs.previous_page_number}}">Previous</a>
{% endif %}

<span>{{blogs.number}}</span>
<span>of</span>
<span>{{blogs.paginator.num_pages}}</span>

{% if blogs.has_next %}
<a href="?page={{blogs.next_page_number}}">Next</a>
<a href="?page={{blogs.paginator.num_pages}}">Last</a>
{% endif %}
```

```python
AUTHENTICATION_BACKENDS = (
    # Needed to login by username in Django admin, regardless of `allauth`
    'django.contrib.auth.backends.ModelBackend',

    # `allauth` specific authentication methods, such as login by e-mail
    'allauth.account.auth_backends.AuthenticationBackend',
)

SITE_ID = 1

LOGIN_REDIRECT_URL = '/'
```
