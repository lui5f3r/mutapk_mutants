.class public final synthetic Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$uPK7z9mX-VhOMpgZXiC_Sy-kck4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/language/LangLinksActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$uPK7z9mX-VhOMpgZXiC_Sy-kck4;->f$0:Lorg/wikipedia/language/LangLinksActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/wikipedia/language/-$$Lambda$LangLinksActivity$uPK7z9mX-VhOMpgZXiC_Sy-kck4;->f$0:Lorg/wikipedia/language/LangLinksActivity;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lorg/wikipedia/language/LangLinksActivity;->lambda$fetchLangLinks$5$LangLinksActivity(Ljava/lang/Throwable;)V

    return-void
.end method
