.class public final Lorg/wikipedia/descriptions/DescriptionEditUtil;
.super Ljava/lang/Object;
.source "DescriptionEditUtil.java"


# static fields
.field static final ABUSEFILTER_DISALLOWED:Ljava/lang/String; = "abusefilter-disallowed"

.field static final ABUSEFILTER_WARNING:Ljava/lang/String; = "abusefilter-warning"

.field private static final DESCRIPTION_SOURCE_LOCAL:Ljava/lang/String; = "local"

.field private static final DESCRIPTION_SOURCE_WIKIDATA:Ljava/lang/String; = "central"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEditAllowed(Lorg/wikipedia/page/Page;)Z
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/wikipedia/page/Page;->getPageProperties()Lorg/wikipedia/page/PageProperties;

    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lorg/wikipedia/page/PageProperties;->getWikiBaseItem()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0}, Lorg/wikipedia/page/PageProperties;->getDescriptionSource()Ljava/lang/String;

    move-result-object p0

    const-string v0, "local"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
