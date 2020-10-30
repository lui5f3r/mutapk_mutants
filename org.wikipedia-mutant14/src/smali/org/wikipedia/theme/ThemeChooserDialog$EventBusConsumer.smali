.class Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;
.super Ljava/lang/Object;
.source "ThemeChooserDialog.java"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/theme/ThemeChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventBusConsumer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/theme/ThemeChooserDialog;


# direct methods
.method private constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/theme/ThemeChooserDialog;Lorg/wikipedia/theme/ThemeChooserDialog$1;)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;-><init>(Lorg/wikipedia/theme/ThemeChooserDialog;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 1

    .line 304
    instance-of p1, p1, Lorg/wikipedia/events/WebViewInvalidateEvent;

    if-eqz p1, :cond_0

    .line 305
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$302(Lorg/wikipedia/theme/ThemeChooserDialog;Z)Z

    .line 306
    iget-object p1, p0, Lorg/wikipedia/theme/ThemeChooserDialog$EventBusConsumer;->this$0:Lorg/wikipedia/theme/ThemeChooserDialog;

    invoke-static {p1}, Lorg/wikipedia/theme/ThemeChooserDialog;->access$700(Lorg/wikipedia/theme/ThemeChooserDialog;)V

    :cond_0
    return-void
.end method
