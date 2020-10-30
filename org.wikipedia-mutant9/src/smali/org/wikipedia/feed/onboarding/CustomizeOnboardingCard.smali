.class public Lorg/wikipedia/feed/onboarding/CustomizeOnboardingCard;
.super Lorg/wikipedia/feed/onboarding/OnboardingCard;
.source "CustomizeOnboardingCard.java"


# direct methods
.method public constructor <init>(Lorg/wikipedia/feed/announcement/Announcement;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onboarding/OnboardingCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    return-void
.end method


# virtual methods
.method public prefKey()I
    .locals 1

    const v0, 0x7f100254

    return v0
.end method

.method public shouldShow()Z
    .locals 1

    .line 20
    invoke-super {p0}, Lorg/wikipedia/feed/onboarding/OnboardingCard;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/wikipedia/WikipediaApp;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public type()Lorg/wikipedia/feed/model/CardType;
    .locals 1

    .line 16
    sget-object v0, Lorg/wikipedia/feed/model/CardType;->ONBOARDING_CUSTOMIZE_FEED:Lorg/wikipedia/feed/model/CardType;

    return-object v0
.end method
