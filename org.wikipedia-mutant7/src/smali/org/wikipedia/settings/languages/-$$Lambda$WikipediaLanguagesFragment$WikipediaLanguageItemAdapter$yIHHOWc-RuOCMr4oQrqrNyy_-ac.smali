.class public final synthetic Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

.field public final synthetic f$1:Lorg/wikipedia/views/DefaultViewHolder;


# direct methods
.method public synthetic constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;Lorg/wikipedia/views/DefaultViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;->f$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    iput-object p2, p0, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;->f$1:Lorg/wikipedia/views/DefaultViewHolder;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;->f$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;

    iget-object v1, p0, Lorg/wikipedia/settings/languages/-$$Lambda$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter$yIHHOWc-RuOCMr4oQrqrNyy_-ac;->f$1:Lorg/wikipedia/views/DefaultViewHolder;

    invoke-virtual {v0, v1, p1, p2}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$WikipediaLanguageItemAdapter;->lambda$onViewAttachedToWindow$1$WikipediaLanguagesFragment$WikipediaLanguageItemAdapter(Lorg/wikipedia/views/DefaultViewHolder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
