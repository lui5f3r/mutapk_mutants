.class Lorg/wikipedia/settings/NotificationSettingsPreferenceLoader;
.super Lorg/wikipedia/settings/BasePreferenceLoader;
.source "NotificationSettingsPreferenceLoader.java"


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/BasePreferenceLoader;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    return-void
.end method


# virtual methods
.method public loadPreferences()V
    .locals 5

    const v0, 0x7f130007

    .line 23
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->loadPreferences(I)V

    const v0, 0x7f10026e

    .line 25
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    const v0, 0x7f100272

    .line 27
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f080118

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0400c5

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 30
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f10026d

    .line 32
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800b7

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 34
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 35
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f100273

    .line 37
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08012e

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 39
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f060086

    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 40
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f100270

    .line 42
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08010a

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 44
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v4, 0x7f04027d

    invoke-static {v2, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 45
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f10026c

    .line 47
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800ee

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 50
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f10026b

    .line 52
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08012d

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v4}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 55
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f100274

    .line 57
    invoke-virtual {p0, v0}, Lorg/wikipedia/settings/BasePreferenceLoader;->findPreference(I)Landroidx/preference/Preference;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0800b8

    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lorg/wikipedia/settings/BasePreferenceLoader;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v3}, Lorg/wikipedia/util/ResourceUtil;->getThemedColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 60
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
