from unittest import TestCase
from app import app


class BasicTestCase(TestCase):

    def test_home_page_true(self):
        tester = app.test_client(self)
        response = tester.get('/', content_type='html/text')
        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.data, b'<h3>Sklearn Prediction Home</h3>')

    def test_home_page_false(self):
        tester = app.test_client(self)
        response = tester.get('/', content_type='html/text')
        self.assertNotEqual(response.status_code, 404)
        self.assertNotEqual(response.data, 'Hello World!')
