.class public Lorg/wikipedia/feed/onboarding/OnboardingClient;
.super Ljava/lang/Object;
.source "OnboardingClient.java"

# interfaces
.implements Lorg/wikipedia/feed/dataclient/FeedClient;


# static fields
.field private static final SHOW_CUSTOMIZE_ONBOARDING_CARD_COUNT:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCards(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lorg/wikipedia/feed/model/Card;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v1, Lorg/wikipedia/feed/onboarding/CustomizeOnboardingCard;

    new-instance v8, Lorg/wikipedia/feed/announcement/Announcement;

    const v2, 0x7f100121

    .line 49
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lorg/wikipedia/feed/announcement/Announcement$Action;

    const v2, 0x7f100120

    .line 51
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#customizefeed"

    invoke-direct {v6, v2, v3}, Lorg/wikipedia/feed/announcement/Announcement$Action;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0x7f10020a

    .line 52
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v3, "customizeOnboardingCard1"

    const-string v5, "https://upload.wikimedia.org/wikipedia/commons/3/3b/Announcement_header_for_Explore_Feed_customization.png"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/wikipedia/feed/announcement/Announcement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/wikipedia/feed/announcement/Announcement$Action;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Lorg/wikipedia/feed/onboarding/CustomizeOnboardingCard;-><init>(Lorg/wikipedia/feed/announcement/Announcement;)V

    .line 54
    invoke-virtual {v1}, Lorg/wikipedia/feed/onboarding/CustomizeOnboardingCard;->shouldShow()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/wikipedia/settings/Prefs;->getExploreFeedVisitCount()I

    move-result p1

    const/4 v2, 0x5

    if-gt p1, v2, :cond_0

    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public request(Landroid/content/Context;Lorg/wikipedia/dataclient/WikiSite;ILorg/wikipedia/feed/dataclient/FeedClient$Callback;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/onboarding/OnboardingClient;->getCards(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {p4, p1}, Lorg/wikipedia/feed/FeedCoordinator;->postCardsToCallback(Lorg/wikipedia/feed/dataclient/FeedClient$Callback;Ljava/util/List;)V

    return-void
.end method
