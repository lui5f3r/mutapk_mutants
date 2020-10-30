.class public Lorg/wikipedia/analytics/ABTestFunnel;
.super Lorg/wikipedia/analytics/Funnel;
.source "ABTestFunnel.java"


# static fields
.field private static final AB_TEST_KEY_PREFIX:Ljava/lang/String; = "ab_test_"

.field public static final GROUP_1:I = 0x0

.field public static final GROUP_2:I = 0x1

.field public static final GROUP_3:I = 0x2

.field public static final GROUP_SIZE_2:I = 0x2

.field public static final GROUP_SIZE_3:I = 0x3

.field private static final REV_ID:I = 0x1310956

.field private static final SCHEMA_NAME:Ljava/lang/String; = "MobileWikiAppABTest"


# instance fields
.field private final abTestGroupCount:I

.field private final abTestName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 4

    .line 27
    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v0

    const-string v1, "MobileWikiAppABTest"

    const v2, 0x1310956

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/wikipedia/analytics/Funnel;-><init>(Lorg/wikipedia/WikipediaApp;Ljava/lang/String;II)V

    .line 28
    iput-object p1, p0, Lorg/wikipedia/analytics/ABTestFunnel;->abTestName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lorg/wikipedia/analytics/ABTestFunnel;->abTestGroupCount:I

    return-void
.end method


# virtual methods
.method getABTestGroup()I
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ab_test_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/wikipedia/analytics/ABTestFunnel;->abTestName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lorg/wikipedia/settings/PrefsIoUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 36
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/analytics/ABTestFunnel;->abTestName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/wikipedia/settings/PrefsIoUtil;->setInt(Ljava/lang/String;I)V

    .line 39
    :cond_0
    iget v1, p0, Lorg/wikipedia/analytics/ABTestFunnel;->abTestGroupCount:I

    rem-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getSessionToken()Ljava/lang/String;
    .locals 1

    .line 11
    invoke-super {p0}, Lorg/wikipedia/analytics/Funnel;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isEnrolled()Z
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ab_test_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/wikipedia/analytics/ABTestFunnel;->abTestName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/wikipedia/settings/PrefsIoUtil;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method logGroupEvent(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "test_group"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 49
    invoke-virtual {p0, v0}, Lorg/wikipedia/analytics/Funnel;->log([Ljava/lang/Object;)V

    return-void
.end method

.method protected preprocessSessionToken(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method
