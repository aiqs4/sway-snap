#!/usr/bin/env python3
import snapcraft

class MesonAdv(snapcraft.MesonPlugin):

    @classmethod
    def schema(cls):
        schema = super().schema()

        schema["subprojects"] = {
            "type": "array", 
            "minitems": 1, 
            "uniqueItems": "true"
        }

        return schema

    def pull(self):
        super().pull()
        print('TODO: pull subproject": {}'.format(
            self.options.my_property))

