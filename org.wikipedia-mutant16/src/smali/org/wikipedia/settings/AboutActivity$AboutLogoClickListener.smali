.class Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/AboutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AboutLogoClickListener"
.end annotation


# static fields
.field private static final SECRET_CLICK_LIMIT:I = 0x7


# instance fields
.field private mSecretClickCount:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/settings/AboutActivity$1;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;-><init>()V

    return-void
.end method

.method private isSecretClickLimitMet()Z
    .locals 2

    .line 100
    iget v0, p0, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;->mSecretClickCount:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showSettingAlreadyEnabledMessage(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f100393

    .line 108
    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method

.method private showSettingEnabledMessage(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f100394

    .line 104
    invoke-static {p1, v0}, Lorg/wikipedia/util/FeedbackUtil;->showMessage(Landroid/app/Activity;I)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget v0, p0, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;->mSecretClickCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;->mSecretClickCount:I

    .line 89
    invoke-direct {p0}, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;->isSecretClickLimitMet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-static {}, Lorg/wikipedia/settings/Prefs;->isShowDeveloperSettingsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;->showSettingAlreadyEnabledMessage(Landroid/app/Activity;)V

    goto :goto_0

    .line 93
    :cond_0
    invoke-static {v1}, Lorg/wikipedia/settings/Prefs;->setShowDeveloperSettingsEnabled(Z)V

    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lorg/wikipedia/settings/AboutActivity$AboutLogoClickListener;->showSettingEnabledMessage(Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
