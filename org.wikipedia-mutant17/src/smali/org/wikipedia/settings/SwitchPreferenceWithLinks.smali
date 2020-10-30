.class public Lorg/wikipedia/settings/SwitchPreferenceWithLinks;
.super Lorg/wikipedia/settings/SwitchPreferenceMultiLine;
.source "SwitchPreferenceWithLinks.java"


# instance fields
.field private movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

.field private onClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/SwitchPreferenceMultiLine;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance v0, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$bUoCCfs7_RWpcdmeAy7YP4rucIA;

    invoke-direct {v0, p0}, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$bUoCCfs7_RWpcdmeAy7YP4rucIA;-><init>(Lorg/wikipedia/settings/SwitchPreferenceWithLinks;)V

    invoke-direct {p1, v0}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object p1, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 24
    new-instance p1, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$MDWLm8oARPxYZOJzn6ZmafghOJk;

    invoke-direct {p1, p0}, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$MDWLm8oARPxYZOJzn6ZmafghOJk;-><init>(Lorg/wikipedia/settings/SwitchPreferenceWithLinks;)V

    iput-object p1, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lorg/wikipedia/settings/SwitchPreferenceMultiLine;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    new-instance p1, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance p2, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$bUoCCfs7_RWpcdmeAy7YP4rucIA;

    invoke-direct {p2, p0}, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$bUoCCfs7_RWpcdmeAy7YP4rucIA;-><init>(Lorg/wikipedia/settings/SwitchPreferenceWithLinks;)V

    invoke-direct {p1, p2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object p1, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 24
    new-instance p1, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$MDWLm8oARPxYZOJzn6ZmafghOJk;

    invoke-direct {p1, p0}, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$MDWLm8oARPxYZOJzn6ZmafghOJk;-><init>(Lorg/wikipedia/settings/SwitchPreferenceWithLinks;)V

    iput-object p1, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lorg/wikipedia/settings/SwitchPreferenceMultiLine;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    new-instance p1, Lorg/wikipedia/page/LinkMovementMethodExt;

    new-instance p2, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$bUoCCfs7_RWpcdmeAy7YP4rucIA;

    invoke-direct {p2, p0}, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$bUoCCfs7_RWpcdmeAy7YP4rucIA;-><init>(Lorg/wikipedia/settings/SwitchPreferenceWithLinks;)V

    invoke-direct {p1, p2}, Lorg/wikipedia/page/LinkMovementMethodExt;-><init>(Lorg/wikipedia/page/LinkMovementMethodExt$UrlHandler;)V

    iput-object p1, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    .line 24
    new-instance p1, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$MDWLm8oARPxYZOJzn6ZmafghOJk;

    invoke-direct {p1, p0}, Lorg/wikipedia/settings/-$$Lambda$SwitchPreferenceWithLinks$MDWLm8oARPxYZOJzn6ZmafghOJk;-><init>(Lorg/wikipedia/settings/SwitchPreferenceWithLinks;)V

    iput-object p1, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SwitchPreferenceWithLinks(Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/wikipedia/util/UriUtil;->handleExternalLink(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method public synthetic lambda$new$1$SwitchPreferenceWithLinks(Landroid/view/View;)V
    .locals 0

    .line 26
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 27
    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    .line 44
    invoke-super {p0, p1}, Lorg/wikipedia/settings/SwitchPreferenceMultiLine;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x1020010

    .line 45
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 46
    iget-object v0, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->movementMethod:Lorg/wikipedia/page/LinkMovementMethodExt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 47
    iget-object v0, p0, Lorg/wikipedia/settings/SwitchPreferenceWithLinks;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040319

    invoke-static {v1, v2}, Lorg/wikipedia/util/ResourceUtil;->getThemedAttributeId(Landroid/content/Context;I)I

    move-result v1

    .line 48
    invoke-static {v0, v1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
