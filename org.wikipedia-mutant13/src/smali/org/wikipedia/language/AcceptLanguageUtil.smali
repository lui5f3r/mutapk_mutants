.class public final Lorg/wikipedia/language/AcceptLanguageUtil;
.super Ljava/lang/Object;
.source "AcceptLanguageUtil.java"


# static fields
.field private static final APP_LANGUAGE_QUALITY:F = 0.9f

.field private static final SYSTEM_LANGUAGE_QUALITY:F = 0.8f


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendToAcceptLanguage(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 3

    .line 28
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 33
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 38
    :cond_1
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v1, p0

    const-string p0, "%s,%s;q=%.1f"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAcceptLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const v0, 0x3f666666    # 0.9f

    .line 19
    invoke-static {p0, p1, v0}, Lorg/wikipedia/language/AcceptLanguageUtil;->appendToAcceptLanguage(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    const p1, 0x3f4ccccd    # 0.8f

    .line 20
    invoke-static {p0, p2, p1}, Lorg/wikipedia/language/AcceptLanguageUtil;->appendToAcceptLanguage(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
