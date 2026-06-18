default:
	@echo "What do you want to make?"

what:
	@case "$(MAKECMDGOALS)" in \
		*"sandwich"*) \
			: ;; \
		*) \
			echo "???" ;; \
	esac

me: what
	@:

a: what
	@:

sandwich:
	@if [ "$(MAKECMDGOALS)" = "me a sandwich" ]; then \
		if [ -n "$(SUDO_USER)" ]; then \
			echo "Okay."; \
		else \
			echo "What? Make it yourself.";\
		fi; \
	elif [ "$(MAKECMDGOALS)" = "a sandwich" ]; then \
		echo "For whom?"; \
	else \
		echo "Correct grammar, please."; \
	fi

.PHONY: default me a sandwich what
