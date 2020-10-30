.class public abstract Lorg/wikipedia/feed/onboarding/OnboardingCard;
.super Lorg/wikipedia/feed/announcement/AnnouncementCard;
.source "OnboardingCard.java"


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/announcement/Announcement;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/announcement/AnnouncementCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 22
    invoke-virtual {p0}, Lorg/wikipedia/feed/onboarding/OnboardingCard;->prefKey()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public onRestore()V
    .locals 2

    .line 26
    invoke-virtual {p0}, Lorg/wikipedia/feed/onboarding/OnboardingCard;->prefKey()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->setBoolean(IZ)V

    return-void
.end method

.method public abstract prefKey()I
.end method

.method public shouldShow()Z
    .locals 2

    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/feed/onboarding/OnboardingCard;->prefKey()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/wikipedia/settings/PrefsIoUtil;->getBoolean(IZ)Z

    move-result v0

    return v0
.end method
