.class public final Lorg/wikipedia/util/ContentProviderClientCompat;
.super Ljava/lang/Object;
.source "ContentProviderClientCompat.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close(Landroid/content/ContentProviderClient;)V
    .locals 2

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    :goto_0
    return-void
.end method
